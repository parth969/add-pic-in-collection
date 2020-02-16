//
//  ViewController.swift
//  collectionpriya
//
//  Created by Yogesh Patel on 15/02/20.
//  Copyright © 2020 yogesh patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
   
    var arr = [UIImage]()
    //var ImgD:UIImage!
    

    
    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    //image picker codding
    
     var image: UIImage!
        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
         {
            
    //        var immage = img.image!
             
            
           //var image = #imageLiteral(resourceName: "220px-Coolie_No._1_poster.jpg")
    //        var yog = arr+image
            
    //                let indexPath = IndexPath(row: arr.count - 1, section: 0)
    //                  collectionview.insertItems(at: [indexPath])
             
             let PickedImage = info[.originalImage] as! UIImage
    //
            //image.contentMode = .scaleAspectFill
            image = PickedImage
            arr.append(image)
            collectionview.reloadData()

             dismiss(animated: true, completion: nil)
         }
         func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
         {
             //self.navigationController?.popViewController(animated: true)//.pop(animated: true, completion: nil)
             self.dismiss(animated: true, completion: nil)
         }
    
    //Collection view codding
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          
        return arr.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
       
        cell.img.image = arr[indexPath.row]
        
        return cell
       }


    
    @IBOutlet weak var pickimage: UIBarButtonItem!
    @IBAction func pickimg(_ sender: UIButton) {
        
        
       
        imgPicker = UIImagePickerController()
               imgPicker.sourceType = .photoLibrary


               imgPicker.delegate = self

                   //self.navigationController?.pushViewController(imgPicker, animated: true)
               self.present(imgPicker, animated: true, completion: nil)

        
    }
   var imgPicker = UIImagePickerController()

   
    
}

