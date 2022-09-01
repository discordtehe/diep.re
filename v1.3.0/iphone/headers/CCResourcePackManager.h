// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCRESOURCEPACKMANAGER_H
#define CCRESOURCEPACKMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCResourcePackManager : NSObject {
    NSArray *_order;
    NSArray *_orderNames;
    NSArray *_packSuffixes;
    NSArray *_twinPackSuffixes;
    NSDictionary *_packsInfo;
    NSDictionary *_deviceCategoriesInfo;
    NSString *_usingPack;
    NSString *_currentDevice;
    int _mode;
    float _currentDeviceCategoryPointScale;
}




-(id)init;
-(void)dealloc;
-(void)assertDeviceCategories;
-(void)assertResourcePacks;
-(void)createOrderForPack:(id)arg0 ;
-(id)getSufixSearchOrder;
-(id)suffixesForAllPacks;
-(id)twinPackSuffixes;
-(id)packForSuffix:(id)arg0 ;
-(float)scaleForSuffix:(id)arg0 ;
-(float)pointScaleForSuffix:(id)arg0 ;
-(float)scaleForAssetOfPack:(id)arg0 ;
-(float)pointScaleForAssetOfPack:(id)arg0 ;
-(int)searchMode;
-(float)currentDeviceCategoryPointScale;
+(id)sharedInstance;
+(void)setDelegate:(id)arg0 ;


@end


#endif