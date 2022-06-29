//
//  View.swift
//  JokenpoViewCode
//
//  Created by Vinicius Angelo on 28/06/22.
//

import UIKit

class View: UIView {
    
    var viewModel = ViewModel()
    
    //MARK: - ViewElements
    
    lazy var logoLabel: UILabel = {
       let label = UILabel()
        label.text = "JOKENPÔ"
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .center
        label.textColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
     lazy var computerLabel: UILabel = {
        let label = UILabel()
        label.text = "Robô"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
     lazy var computerImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "padrao")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var userLabel: UILabel = {
       let label = UILabel()
        label.text = "Escolha uma opção"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var pedraButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "pedra"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pedraButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var papelButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "papel"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(papelButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var tesouraButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "tesoura"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tesouraButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var XLabel: UILabel = {
       let label = UILabel()
        label.text = "X"
        label.font = .boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var result1Label: UILabel = {
       let label = UILabel()
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var result2Label: UILabel = {
       let label = UILabel()
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var resultLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        label.font = .boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    



    
    //MARK: - SETUP
    //Init
    init() {
        super.init(frame: .zero)
        setupView()
        setupLayoutConstraints()
        setupAdditionalConfiguration()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //SetupView
    private func setupView() {
        self.addSubview(computerLabel)
        self.addSubview(computerImage)
        self.addSubview(userLabel)
        self.addSubview(logoLabel)
        self.addSubview(pedraButton)
        self.addSubview(tesouraButton)
        self.addSubview(papelButton)
        self.addSubview(XLabel)
        self.addSubview(result1Label)
        self.addSubview(result2Label)
        self.addSubview(resultLabel)
        


    }
    
    private func setupAdditionalConfiguration () {
        self.backgroundColor = .systemBackground
    }
        
    //Constraits
    private func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            
            logoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            logoLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            logoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            computerLabel.topAnchor.constraint(equalTo: logoLabel.bottomAnchor, constant: 30),
            computerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            computerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            computerImage.topAnchor.constraint(equalTo: computerLabel.bottomAnchor, constant: 20),
            computerImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            userLabel.topAnchor.constraint(equalTo: computerImage.bottomAnchor, constant: 30),
            userLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            userLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            pedraButton.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 20),
            pedraButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            papelButton.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 20),
            papelButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
         
            tesouraButton.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 20),
            tesouraButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
 
            XLabel.topAnchor.constraint(equalTo: papelButton.bottomAnchor, constant: 50),
            XLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            result1Label.topAnchor.constraint(equalTo: pedraButton.bottomAnchor, constant: 50),
            result1Label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            
            result2Label.topAnchor.constraint(equalTo: tesouraButton.bottomAnchor, constant: 50),
            result2Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            
            resultLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            resultLabel.topAnchor.constraint(equalTo: XLabel.bottomAnchor, constant: 20)

        ])
        
    }
    
    var result1: Int = 0
    var result2: Int = 0
    
    @objc func pedraButtonTapped() {
        
//        papelButton.isHidden = true
//        tesouraButton.isHidden = true
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1{
            resultLabel.text = "Empate"
            resultLabel.textColor = UIColor.yellow
            computerImage.image = UIImage(named: "pedra")
            result1Label.textColor = UIColor.yellow
            result2Label.textColor = UIColor.yellow
        }
        else if random == 2 {
            resultLabel.text = "Derrota"
            resultLabel.textColor = UIColor.red
            result2 += 1
            result2Label.text = String(result2)
            computerImage.image = UIImage(named: "papel")
            result1Label.textColor = UIColor.red
            result2Label.textColor = UIColor.green
        }
        else {
            resultLabel.text = "Vitória"
            resultLabel.textColor = UIColor.green
            result1 += 1
            result1Label.text = String(result1)
            computerImage.image = UIImage(named: "tesoura")
            result1Label.textColor = UIColor.green
            result2Label.textColor = UIColor.red
        }
    }
    
    @objc func papelButtonTapped(){
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1{
            resultLabel.text = "Empate"
            resultLabel.textColor = UIColor.yellow
            computerImage.image = UIImage(named: "papel")
            result1Label.textColor = UIColor.yellow
            result2Label.textColor = UIColor.yellow
        }
        else if random == 2 {
            resultLabel.text = "Derrota"
            resultLabel.textColor = UIColor.red
            result2 += 1
            result2Label.text = String(result2)
            computerImage.image = UIImage(named: "tesoura")
            result1Label.textColor = UIColor.red
            result2Label.textColor = UIColor.green
        }
        else {
            resultLabel.text = "Vitória"
            resultLabel.textColor = UIColor.green
            result1 += 1
            result1Label.text = String(result1)
            computerImage.image = UIImage(named: "pedra")
            result1Label.textColor = UIColor.green
            result2Label.textColor = UIColor.red
        }
        
        
    }
    
    @objc func tesouraButtonTapped(){
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1{
            resultLabel.text = "Empate"
            resultLabel.textColor = UIColor.yellow
            computerImage.image = UIImage(named: "tesoura")
            result1Label.textColor = UIColor.yellow
            result2Label.textColor = UIColor.yellow
        }
        else if random == 2 {
            resultLabel.text = "Derrota"
            resultLabel.textColor = UIColor.red
            result2 += 1
            result2Label.text = String(result2)
            computerImage.image = UIImage(named: "pedra")
            result1Label.textColor = UIColor.red
            result2Label.textColor = UIColor.green
        }
        else {
            resultLabel.text = "Vitória"
            resultLabel.textColor = UIColor.green
            result1 += 1
            result1Label.text = String(result1)
            computerImage.image = UIImage(named: "papel")
            result1Label.textColor = UIColor.green
            result2Label.textColor = UIColor.red
        }
        
    }
    
}

