//
//  ViewController.swift
//  iPennyVibration
//
//  Created by PO-CHUN CHANG on 2022/11/6.
//

import UIKit
import CoreHaptics

class ViewController: UIViewController {

    var url: URL!
    var supportsHaptics: Bool = false
    var engine: CHHapticEngine!
    var pattern: CHHapticPattern!
    var advancePlayer: CHHapticAdvancedPatternPlayer!

    @IBAction func Boing(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Boing", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Gravel(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Gravel", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Heartbeats(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Heartbeats", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Hit(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Hit", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Inflate(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Inflate", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func MyEffect(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/MyEffect", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Oscillate(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Oscillate", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    
    @IBAction func Recharge(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Recharge", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Rumble(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Rumble", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    @IBAction func Sparkle(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Sparkle", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    
    @IBAction func Triple(_ sender: Any) {
        do
        {
            // Express the path to the AHAP file before attempting to load it.
            url = Bundle.main.url(forResource: "AHAP/Triple", withExtension: "ahap")
            pattern = try CHHapticPattern(contentsOf: url!)
            advancePlayer = try engine.makeAdvancedPlayer(with: pattern)
            engine.stop()
            try engine.start()
            advancePlayer.loopEnabled = true;
            try advancePlayer.start(atTime: 0);
        }
        catch
        {
            print("error!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hapticCapability = CHHapticEngine.capabilitiesForHardware()
        supportsHaptics = hapticCapability.supportsHaptics
        if(supportsHaptics)
        {
            do {
                engine = try CHHapticEngine()
            } catch let error {
                fatalError("Engine Creation Error: \(error)")
            }
            
            engine.resetHandler = {
                print("Reset Handler: Restarting the engine.")
                do {
                    try self.engine.start()
                } catch {
                    fatalError("Failed to restart the engine: \(error)")
                }
            }
            
            engine.stoppedHandler = { reason in
                print("Stop Handler: The engine stopped for reason: \(reason.rawValue)")
                switch reason {
                case .audioSessionInterrupt:
                    print("Audio session interrupt")
                case .applicationSuspended:
                    print("Application suspended")
                case .idleTimeout:
                    print("Idle timeout")
                case .systemError:
                    print("System error")
                case .notifyWhenFinished:
                    print("notifyWhenFinished")
                case .engineDestroyed:
                    print("engineDestroyed")
                case .gameControllerDisconnect:
                    print("gameControllerDisconnect")
                @unknown default:
                    print("Unknown error")
                }
            }
        }
        // Do any additional setup after loading the view.
    }
}



