import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var videoPreviewView: UIView!
    @IBOutlet weak var timelineView: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    private var player: AVPlayer?
    private var playerLayer: AVPlayerLayer?
    private var timelineEditor: TimelineEditor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTimelineEditor()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor.black
        
        // Setup video preview view
        videoPreviewView.backgroundColor = UIColor.darkGray
        
        // Setup timeline view
        timelineView.backgroundColor = UIColor.black
        
        // Setup buttons
        playButton.setTitle("Play", for: .normal)
        pauseButton.setTitle("Pause", for: .normal)
        stopButton.setTitle("Stop", for: .normal)
        
        playButton.backgroundColor = UIColor.systemGreen
        pauseButton.backgroundColor = UIColor.systemOrange
        stopButton.backgroundColor = UIColor.systemRed
        
        playButton.layer.cornerRadius = 8
        pauseButton.layer.cornerRadius = 8
        stopButton.layer.cornerRadius = 8
        
        // Add button actions
        playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        pauseButton.addTarget(self, action: #selector(pauseButtonTapped), for: .touchUpInside)
        stopButton.addTarget(self, action: #selector(stopButtonTapped), for: .touchUpInside)
    }
    
    private func setupTimelineEditor() {
        timelineEditor = TimelineEditor(frame: timelineView.bounds)
        timelineView.addSubview(timelineEditor!)
        timelineEditor?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    @objc private func playButtonTapped() {
        player?.play()
    }
    
    @objc private func pauseButtonTapped() {
        player?.pause()
    }
    
    @objc private func stopButtonTapped() {
        player?.pause()
        player?.seek(to: .zero)
    }
}