// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSIGNALS_H
#define GADSIGNALS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADSignals : NSObject {
    NSMutableDictionary *_signalSources;
    NSMutableArray *_mainQueueSignalUpdateBlocks;
}




-(id)init;
-(id)dictionaryWithSignals:(id)arg0 ;
-(void)createSignalDictionaryWithTargeting:(id)arg0 completionHandler:(id)arg1 ;
-(void)updatedSignalsWithKeys:(id)arg0 completionHandler:(id)arg1 ;
-(void)updatedSignalsWithSignalSources:(id)arg0 completionHandler:(id)arg1 ;
-(void)runMainQueueSignalUpdateBlocks;
+(id)sharedInstance;


@end


#endif