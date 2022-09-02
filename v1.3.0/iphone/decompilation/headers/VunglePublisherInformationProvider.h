// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPUBLISHERINFORMATIONPROVIDER_H
#define VUNGLEPUBLISHERINFORMATIONPROVIDER_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface VunglePublisherInformationProvider : NSObject <NSCopying>



@property (copy, nonatomic) NSString *IFA; // ivar: _IFA
@property (copy, nonatomic) NSString *identifierForVendor; // ivar: _identifierForVendor
@property (copy, nonatomic) NSString *appID; // ivar: _appID
@property (copy, nonatomic) NSString *pluginName; // ivar: _pluginName


-(id)init;
-(id)toDictionary;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
+(id)sharedProvider;


@end


#endif