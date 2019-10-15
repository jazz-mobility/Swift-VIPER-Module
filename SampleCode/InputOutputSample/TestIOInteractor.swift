//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestIOInteractorOutput: AnyObject {

  /* Interactor -> Presenter */
}

protocol TestIOInteractorInput: AnyObject {

  var presenter: TestIOInteractorOutput?  { get set }

  /* Presenter -> Interactor */
}

final class TestIOInteractor: TestIOInteractorInput {

  weak var presenter: TestIOInteractorOutput?
}
