//  Copyright © 2019 Jasveer Singh. All rights reserved.

import UIKit

protocol TestView: AnyObject {

  var presenter: TestPresenting?  { get set }
}

final class TestViewController: UIViewController, TestView {

  var presenter: TestPresenting?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
