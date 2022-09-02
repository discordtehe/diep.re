// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBADAPTERSIGNALSOURCE_H
#define GADRTBADAPTERSIGNALSOURCE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADRTBRequestParameters;
@protocol GADSignalSource;
@protocol GADSignal;
@protocol GADRTBAdapter;

@interface GADRTBAdapterSignalSource : NSObject <GADSignalSource, GADSignal>

 {
    id<GADRTBAdapter> *_adapter;
    GADRTBRequestParameters *_requestParameters;
    NSMutableDictionary *_adapterSignals;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRTBAdapter:(id)arg0 targeting:(id)arg1 ;
-(id)adapterSignals;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;


@end


#endif