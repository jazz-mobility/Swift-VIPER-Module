//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestInteracting: AnyObject {

  var presenter: TestPresenting?  { get set }
}

final class TestInteractor: TestInteracting {

  weak var presenter: TestPresenting?
}
