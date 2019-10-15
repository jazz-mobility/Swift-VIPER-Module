//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestIOPresenting: AnyObject {

  var interactor: TestIOInteractorInput? { get set }
}

final class TestIOPresenter: TestIOPresenting, TestIOInteractorOutput {

  weak private var view: TestIOView?
  var interactor: TestIOInteractorInput?
  private let router: TestIORouting

  init(interface: TestIOView, interactor: TestIOInteractorInput?, router: TestIORouting) {
    self.view = interface
    self.interactor = interactor
    self.router = router
  }

}
