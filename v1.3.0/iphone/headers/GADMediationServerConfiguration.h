// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONSERVERCONFIGURATION_H
#define GADMEDIATIONSERVERCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADMediationServerConfiguration : NSObject {
    NSMutableSet *_credentials;
}


@property (readonly, nonatomic) NSArray *credentials;


-(id)init;
-(id)initWithDictionary:(id)arg0 ;
-(void)addMediationCredentials:(id)arg0 ;


@end


#endif