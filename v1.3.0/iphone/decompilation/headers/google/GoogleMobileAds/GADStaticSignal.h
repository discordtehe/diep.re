// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSTATICSIGNAL_H
#define GADSTATICSIGNAL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADSignal;

@interface GADStaticSignal : NSObject <GADSignal>

 {
    NSDictionary *_dictionary;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDictionary:(id)arg0 ;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;


@end


#endif