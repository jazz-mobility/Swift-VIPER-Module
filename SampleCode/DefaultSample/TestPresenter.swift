//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestPresenting: AnyObject {

}

final class TestPresenter: TestPresenting {

  weak private var view: TestView?
  var interactor: TestInteracting?
  private let router: TestRouting

  init(interface: TestView, interactor: TestInteracting?, router: TestRouting) {
    self.view = interface
    self.interactor = interactor
    self.router = router
  }

}
