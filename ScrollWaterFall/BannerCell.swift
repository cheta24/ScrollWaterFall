//
//  BannerCell.swift
//  ScrollWaterFall
//
//  Created by Chetan Shanbag on 29/09/23.
//

import UIKit
import AppLovinSDK
class BannerCell: UITableViewCell {
    
    var adView: MAAdView!
    let adUnitID = "fd30fd06782c6796"
    override func awakeFromNib() {
        super.awakeFromNib()
        adView = MAAdView(adUnitIdentifier: adUnitID)
        adView.frame = CGRect(x: 0, y: 0, width: 350, height: 100)
        self.contentView.addSubview(adView)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(){
        
        adView.loadAd()
        
    }
    
}

extension BannerCell : MAAdViewAdDelegate {
    func didExpand(_ ad: MAAd) {}
    func didCollapse(_ ad: MAAd) {}
}

extension BannerCell : MAAdDelegate {
    func didLoad(_ ad: MAAd) {
        
    }
    
    func didFailToLoadAd(forAdUnitIdentifier adUnitIdentifier: String, withError error: MAError) {
        
    }
    
    func didFail(toDisplay ad: MAAd, withError error: MAError) {
       
    }
    
    func didDisplay(_ ad: MAAd) {}
    func didHide(_ ad: MAAd) {}
    func didClick(_ ad: MAAd) {}
}
