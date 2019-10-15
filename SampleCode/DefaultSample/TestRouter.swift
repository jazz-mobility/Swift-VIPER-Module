//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestRouting: AnyObject {

}

final class TestRouter: TestRouting {

  weak var viewController: UIViewController?

  static func createModule() -> UIViewController {
    // Change to get view from storyboard if not using xib
    let bundle = Bundle(for: TestViewController.self)
    let view = TestViewController(nibName: "TestViewController", bundle: bundle)
    let interactor = TestInteractor()
    let router = TestRouter()
    let presenter = TestPresenter(interface: view, interactor: interactor, router: router)

    view.presenter = presenter
    interactor.presenter = presenter
    router.viewController = view

    return view
  }
}
