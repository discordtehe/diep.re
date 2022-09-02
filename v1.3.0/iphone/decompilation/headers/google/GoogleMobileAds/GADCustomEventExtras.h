// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCUSTOMEVENTEXTRAS_H
#define GADCUSTOMEVENTEXTRAS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADAdNetworkExtras;

@interface GADCustomEventExtras : NSObject <GADAdNetworkExtras>

 {
    NSMutableDictionary *_extras;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)setExtras:(id)arg0 forLabel:(id)arg1 ;
-(id)extrasForLabel:(id)arg0 ;
-(void)removeAllExtras;
-(id)allExtras;


@end


#endif