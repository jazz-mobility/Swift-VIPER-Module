//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestIOView: AnyObject {

  var presenter: TestIOPresenting?  { get set }

  /* Presenter -> ViewController */
}

final class TestIOViewController: UIViewController, TestIOView {

  var presenter: TestIOPresenting?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
