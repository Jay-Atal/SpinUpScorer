//
//  ViewController.swift
//  SPIN2
//
//  Created by Ajay Atal on 5/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    var RedScore = 0
    var BlueScore = 0
    var AutonRedScore = 0
    var AutonBlueScore=0
    var AutonCountRed = 1
    var AutonCountBlue = 1
    
    @IBOutlet weak var Rollers: UILabel!
    var ROLS = 10
    var HG = 5
    var LG = 1
    var TI = 3
    
    var R1 = 0
    var R2 = 0
    var R3 = 0
    
    var B1 = 0
    var B2 = 0
    var B3 = 0
    
    var maxDiscs = 60
    var maxTiles = 28
    
    var RL1 = 0
    var RL2 = 0
    var RL3 = 0
    var RL4 = 0
    
    var RLPTS = 0
    var BLPTS = 0

    var RP = 0
    @IBOutlet weak var rAut: UIButton!
    @IBOutlet weak var bAut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        
       // Rollers.minimumScaleFactor = 0.5
        
    
  
        
        RedScore = 0
        BlueScore = 0
        AutonRedScore = 0
        AutonBlueScore=0
        AutonCountRed = 1
        AutonCountBlue = 1
       
        R1 = 0
        R2 = 0
        R3 = 0
        
        RL1 = 1
        RL2 = 1
        RL3 = 1
        RL4 = 1
        
        
        
  
        
        B1 = 0
        B2 = 0
        B3 = 0
       
            rAut.tintColor = UIColor.systemRed
            rAut.backgroundColor = UIColor.white
            rAut.layer.borderWidth = 1
            rAut.layer.borderColor = UIColor.black.cgColor
            
            bAut.tintColor = UIColor.systemBlue
            bAut.backgroundColor = UIColor.white
            bAut.layer.borderWidth = 1
            bAut.layer.borderColor = UIColor.black.cgColor
       
        
        
        ROL1.backgroundColor = UIColor.lightGray
        ROL2.backgroundColor = UIColor.lightGray
        ROL3.backgroundColor = UIColor.lightGray
        ROL4.backgroundColor = UIColor.lightGray
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func trash(_ sender: Any) {
        
        RedScore = 0
        BlueScore = 0
        AutonRedScore = 0
        AutonBlueScore=0
        AutonCountRed = 1
        AutonCountBlue = 1
       
        R1 = 0
        R2 = 0
        R3 = 0
        
        RL1 = 1
        RL2 = 1
        RL3 = 1
        RL4 = 1
        
        
        
  
        
        B1 = 0
        B2 = 0
        B3 = 0
        
        rAut.tintColor = UIColor.systemRed
        rAut.backgroundColor = UIColor.white
        rAut.layer.borderWidth = 1
        rAut.layer.borderColor = UIColor.black.cgColor
        
        bAut.tintColor = UIColor.systemBlue
        bAut.backgroundColor = UIColor.white
        bAut.layer.borderWidth = 1
        bAut.layer.borderColor = UIColor.black.cgColor
        
        
        ROL1.backgroundColor = UIColor.lightGray
        ROL2.backgroundColor = UIColor.lightGray
        ROL3.backgroundColor = UIColor.lightGray
        ROL4.backgroundColor = UIColor.lightGray
        lblTiBlue.text = "0"
        lblTiRed.text = "0"
        
        lblHGBlue.text = "0"
        lblHGRed.text = "0"
        
        lblLGBlue.text = "0"
        lblLGRed.text = "0"
        calcScore()
    }
    
    @IBOutlet weak var ROL1: UIButton!
    @IBOutlet weak var ROL2: UIButton!
    @IBOutlet weak var ROL3: UIButton!
    @IBOutlet weak var ROL4: UIButton!
    
    func calcScore()
    {
        
        
        
        AutonRedScore = 0
        AutonBlueScore = 0
        
        if(AutonCountRed == 0 && AutonCountBlue == 0)
        {
            AutonRedScore = 5
            AutonBlueScore = 5
        }
        
        if(AutonCountRed == 0 && AutonCountBlue != 0)
        {
            AutonRedScore = 10
            
        }
        
        if(AutonCountRed != 0 && AutonCountBlue == 0)
        {
            AutonBlueScore = 10
        }
        
        RLPTS = 0
        BLPTS = 0
        
        
        
        if(RL1==2)
        {
            RLPTS = RLPTS + ROLS
        }
        if(RL2==2)
        {
            RLPTS = RLPTS + ROLS
        }
        if(RL3==2)
        {
            RLPTS = RLPTS + ROLS
        }
        if(RL4==2)
        {
            RLPTS = RLPTS + ROLS
        }
        
        if(RL1==0)
        {
            BLPTS = BLPTS + ROLS
        }
        if(RL2==0)
        {
            BLPTS = BLPTS + ROLS
        }
        if(RL3==0)
        {
            BLPTS = BLPTS + ROLS
        }
        if(RL4==0)
        {
            BLPTS = BLPTS + ROLS
        }
        
        RedScore=R1*HG+R2*LG+R3*TI+RLPTS+AutonRedScore
        BlueScore=B1*HG+B2*LG+B3*TI+BLPTS+AutonBlueScore
        redScore.text = "\(RedScore)"
        blueScore.text = "\(BlueScore)"
    }
    
    @IBAction func rol1(_ sender: Any) {
        
        
        if(RL1==1)
        {
            ROL1.backgroundColor = UIColor.systemRed
            RL1=2
            calcScore()
            return
        }
        
        if(RL1==2)
        {
            ROL1.backgroundColor = UIColor.systemBlue
            RL1=0
            calcScore()
            return
        }
        if(RL1==0)
        {
            ROL1.backgroundColor = UIColor.lightGray
            RL1=1
            calcScore()
            return
        }
        
        
    }
    @IBAction func rol2(_ sender: Any) {
        if(RL2==1)
        {
            ROL2.backgroundColor = UIColor.systemRed
            RL2=2
            calcScore()
            return
        }
        
        if(RL2==2)
        {
            ROL2.backgroundColor = UIColor.systemBlue
            RL2=0
            calcScore()
            return
        }
        if(RL2==0)
        {
            ROL2.backgroundColor = UIColor.lightGray
            RL2=1
            calcScore()
            return
        }
    }
    @IBAction func rol3(_ sender: Any) {
        
        if(RL3==1)
        {
            ROL3.backgroundColor = UIColor.systemRed
            RL3=2
            calcScore()
            return
        }
        
        if(RL3==2)
        {
            ROL3.backgroundColor = UIColor.systemBlue
            RL3=0
            calcScore()
            return
        }
        if(RL3==0)
        {
            ROL3.backgroundColor = UIColor.lightGray
            RL3=1
            calcScore()
            return
        }
    }
    @IBAction func rol4(_ sender: Any) {
        
        if(RL4==1)
        {
            ROL4.backgroundColor = UIColor.systemRed
            RL4=2
            calcScore()
            return
        }
        
        if(RL4==2)
        {
            ROL4.backgroundColor = UIColor.systemBlue
            RL4=0
            calcScore()
            return
        }
        if(RL4==0)
        {
            ROL4.backgroundColor = UIColor.lightGray
            RL4=1
            calcScore()
            return
        }
    }
    
    
    @IBOutlet weak var redScore: UILabel!
    @IBOutlet weak var blueScore: UILabel!
    
    @IBAction func RedAuto(_ sender: Any) {
       if(AutonCountRed==0)
       {
        rAut.tintColor = UIColor.systemRed
        rAut.backgroundColor = UIColor.white
        rAut.layer.borderWidth = 1
        rAut.layer.borderColor = UIColor.black.cgColor
        AutonCountRed = 1
        calcScore()
        return
       }
        
        if(AutonCountRed==1)
        {
         rAut.tintColor = UIColor.white
         rAut.backgroundColor = UIColor.systemRed
         rAut.layer.borderWidth = 0
         AutonCountRed = 0
         calcScore()
         return
        }
       
    }
    
    @IBAction func BlueAuto(_ sender: Any) {
        if(AutonCountBlue==0)
        {
         bAut.tintColor = UIColor.systemBlue
         bAut.backgroundColor = UIColor.white
         bAut.layer.borderWidth = 1
         bAut.layer.borderColor = UIColor.black.cgColor
         AutonCountBlue = 1
         calcScore()
         return
        }
         
         if(AutonCountBlue==1)
         {
          bAut.tintColor = UIColor.white
          bAut.backgroundColor = UIColor.systemBlue
          bAut.layer.borderWidth = 0
          AutonCountBlue = 0
          calcScore()
          return
         }
    }
    
    
   
    
    
    @IBAction func rol4Red(_ sender: Any) {
    }
    @IBAction func rol4Blue(_ sender: Any) {
    }
    
    
    
    @IBAction func minHGRed(_ sender: Any) {
        if (R1>=1)
        {
            R1=R1-1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblHGRed.text = "\(R1)"
        calcScore()
    }
    @IBOutlet weak var lblHGRed: UILabel!
    
    @IBAction func plusHGRed(_ sender: Any) {
        if (R1+R2+B1+B2<maxDiscs)
        {
            R1=R1+1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblHGRed.text = "\(R1)"
        calcScore()
    }
    
    
    @IBAction func minHGBlue(_ sender: Any) {
        if (B1>=1)
        {
            B1=B1-1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblHGBlue.text = "\(B1)"
        calcScore()
    }
    @IBOutlet weak var lblHGBlue: UILabel!
    @IBAction func plusHGBlue(_ sender: Any) {
        if (R1+R2+B1+B2<maxDiscs)
        {
            B1=B1+1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblHGBlue.text = "\(B1)"
        calcScore()
    }
    
    
    
    
    
    
    @IBAction func minLGRed(_ sender: Any) {
        if (R2>=1)
        {
            R2=R2-1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblLGRed.text = "\(R2)"
        calcScore()
    }
    @IBOutlet weak var lblLGRed: UILabel!
    @IBAction func plusLGRed(_ sender: Any) {
        if (R1+R2+B1+B2<maxDiscs)
        {
            R2=R2+1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblLGRed.text = "\(R2)"
        calcScore()
    }
    
    @IBAction func minLGBlue(_ sender: Any) {
        if (B2>=1)
        {
            B2=B2-1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblLGBlue.text = "\(B2)"
        calcScore()
    }
    @IBOutlet weak var lblLGBlue: UILabel!
    @IBAction func plusLGBlue(_ sender: Any) {
        if (R1+R2+B1+B2<maxDiscs)
        {
            B2=B2+1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblLGBlue.text = "\(B2)"
        calcScore()
    }
    
    
    
    @IBAction func minTiRed(_ sender: Any) {
        if (R3>=1)
        {
            R3=R3-1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblTiRed.text = "\(R3)"
        calcScore()
    }
    @IBOutlet weak var lblTiRed: UILabel!
    @IBAction func plusTiRed(_ sender: Any) {
        if (R3<maxTiles)
        {
            R3=R3+1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblTiRed.text = "\(R3)"
        calcScore()
    }
    
    @IBAction func minTiBlue(_ sender: Any) {
        if (B3>=1)
        {
            B3=B3-1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblTiBlue.text = "\(B3)"
        calcScore()
    }
    @IBOutlet weak var lblTiBlue: UILabel!
    @IBAction func plusTiBlue(_ sender: Any) {
        if (B3<maxTiles)
        {
            B3=B3+1
        }
       
               redScore.text = "\(RedScore)"
               blueScore.text = "\(BlueScore)"
        lblTiBlue.text = "\(B3)"
        calcScore()
        
    }
    
    
    
    
    
    
    
}

