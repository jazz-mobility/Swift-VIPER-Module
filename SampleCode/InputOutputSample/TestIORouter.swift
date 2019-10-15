//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestIORouting: AnyObject {

}

final class TestIORouter: TestIORouting {

  weak var viewController: UIViewController?

  static func createModule() -> UIViewController {
    // Change to get view from storyboard if not using xib
    let bundle = Bundle(for: TestIOViewController.self)
    let view = TestIOViewController(nibName: "TestIOViewController", bundle: bundle)
    let interactor = TestIOInteractor()
    let router = TestIORouter()
    let presenter = TestIOPresenter(interface: view, interactor: interactor, router: router)

    view.presenter = presenter
    interactor.presenter = presenter
    router.viewController = view

    return view
  }
}
