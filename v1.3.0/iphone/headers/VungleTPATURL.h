// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLETPATURL_H
#define VUNGLETPATURL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;
@protocol NSCopying;

@interface VungleTPATURL : NSObject <NSCoding, NSCopying>



@property (retain, nonatomic) NSURL *internalURL; // ivar: _internalURL
@property (readonly, copy, nonatomic) NSString *URLString; // ivar: _URLString
@property (readonly, nonatomic) NSURL *URL;


-(id)initWithURLString:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(id)performReplacementsWithURLString:(id)arg0 ;
-(BOOL)isEqualToTPATURL:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)description;


@end


#endif