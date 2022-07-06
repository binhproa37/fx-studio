import UIKit

class LoginViewController: BaseViewController {
    
    // MARK: - Properties
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - config
//    override func setupUI() {
//        super.setupUI()
//        self.title = "Login"
//        updateView()
//    }
//
//    override func setupData() {
//    }
    
    func updateView() {
        emailTextField.text = viewModel.email
        passwordTextField.text = viewModel.password
    }
    
//    // MARK: - Actions
//    @IBAction func loginButtonTouchUpInside(_ sender: Any) {
//        print("Login")
//    }
//    
//    @IBAction func loginButtonTouchUpInside(_ sender: Any) {
//
//            let email = emailTextField.text ?? ""
//            let password = passwordTextField.text ?? ""
//
//            viewModel.login(email: email, password: password) { (done) in
//                if done {
//                    print("ĐĂNG NHẬP THÀNH CÔNG")
//                } else {
//                    print("ĐĂNG NHẬP THẤT BẠI")
//                }
//            }
//    }
}
