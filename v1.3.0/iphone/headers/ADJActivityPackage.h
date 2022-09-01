// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJACTIVITYPACKAGE_H
#define ADJACTIVITYPACKAGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;

@interface ADJActivityPackage : NSObject <NSCoding>



@property (copy, nonatomic) NSString *path; // ivar: _path
@property (copy, nonatomic) NSString *clientSdk; // ivar: _clientSdk
@property (nonatomic) NSInteger retries; // ivar: _retries
@property (retain, nonatomic) NSMutableDictionary *parameters; // ivar: _parameters
@property (retain, nonatomic) NSDictionary *partnerParameters; // ivar: _partnerParameters
@property (retain, nonatomic) NSDictionary *callbackParameters; // ivar: _callbackParameters
@property (copy, nonatomic) NSString *suffix; // ivar: _suffix
@property (nonatomic) int activityKind; // ivar: _activityKind


-(id)extendedString;
-(NSInteger)getRetries;
-(NSInteger)increaseRetries;
-(id)description;
-(id)successMessage;
-(id)failureMessage;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;


@end


#endif