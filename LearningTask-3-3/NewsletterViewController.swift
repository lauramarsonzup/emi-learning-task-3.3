//
//  NewsletterViewController.swift
//  LearningTask-3-3
//
//  Created by Laura Pinheiro Marson on 17/10/22.
//

import UIKit

class NewsletterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func botaoConfirmacaoPressionado(_ sender: UIButton) {
        exibirAlertaDeConfirmacao()
    }
    
    func exibirAlertaDeConfirmacao() {
        guard let email = emailTextField.text else { return }
        
        let alert = UIAlertController(title: "Tudo pronto!", message: "Email \(email) cadastrado com sucesso.\nEm breve você começará a receber oportunidades imperdíveis.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        
        self.present(alert, animated: true)
    }
    
}
