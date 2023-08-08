//
//  ViewController.swift
//  SpeechKitDemo
//
//  Created by Mac-OBS-51 on 08/08/23.
//

import UIKit
import Speech

class ViewController: UIViewController {
    
    private weak var titleLabel: UILabel!
    private weak var startStopButton: UIButton!
    private weak var textToSpeechLabel: UILabel!
    
    private var isStart: Bool? = false
    
    private let audioEngine = AVAudioEngine()
    private let speechRecognizer: SFSpeechRecognizer? = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
    private var regognitionTask: SFSpeechRecognitionTask?
    private var recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
    private var speechResult = SFSpeechRecognitionResult()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        setupViews()
    }
    
    private func setupViews() {
        
        let titleLabelItem = UILabel()
        titleLabelItem.translatesAutoresizingMaskIntoConstraints = false
        titleLabelItem.font = .systemFont(ofSize: 25)
        titleLabelItem.textAlignment = .center
        titleLabelItem.textColor = .white
        titleLabelItem.numberOfLines = 0
        titleLabelItem.text = "Voice Recognition!"
        self.titleLabel = titleLabelItem
        view.addSubview(titleLabelItem)
        
        let startStopButtonItem = UIButton()
        startStopButtonItem.translatesAutoresizingMaskIntoConstraints = false
        startStopButtonItem.setTitle("Start", for: .normal)
        startStopButtonItem.backgroundColor = .red
        startStopButtonItem.layer.cornerRadius = 35/2
        startStopButtonItem.addTarget(self, action: #selector(startStopButtonTapped), for: .touchUpInside)
        self.startStopButton = startStopButtonItem
        view.addSubview(startStopButtonItem)
        
        let textToSpeechLabelItem = UILabel()
        textToSpeechLabelItem.translatesAutoresizingMaskIntoConstraints = false
        textToSpeechLabelItem.font = .systemFont(ofSize: 15)
        textToSpeechLabelItem.textAlignment = .left
        textToSpeechLabelItem.textColor = .blue
        textToSpeechLabelItem.numberOfLines = 0
        self.textToSpeechLabel = textToSpeechLabelItem
        view.addSubview(textToSpeechLabelItem)
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            
            textToSpeechLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            textToSpeechLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            textToSpeechLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            
            startStopButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120),
            startStopButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -120),
            startStopButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
            
            
        ])
        
    }
    
    @objc private func startStopButtonTapped() {
        
    }
    
    
    private func recordAndRecognizeSpeech() {
       
    }

}

