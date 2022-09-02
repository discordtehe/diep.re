// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONSHOWADDELEGATEMANAGER_H
#define UMONSHOWADDELEGATEMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UMONShowAdDelegateManager : NSObject

@property (retain, nonatomic) NSMutableDictionary *delegateMap; // ivar: _delegateMap


-(id)init;
-(void)setDelegate:(id)arg0 forPlacementId:(id)arg1 ;
-(void)sendAdFinished:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)sendAdStarted:(id)arg0 ;
+(id)sharedInstance;


@end


#endif