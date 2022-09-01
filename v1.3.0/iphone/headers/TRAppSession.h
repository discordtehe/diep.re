// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRAPPSESSION_H
#define TRAPPSESSION_H


#import <Foundation/Foundation.h>

@protocol NSCoding;

@interface TRAppSession : NSObject <NSCoding>



@property (nonatomic) NSInteger appSessionID; // ivar: _appSessionID
@property (nonatomic) BOOL isValid; // ivar: _isValid


-(id)init;
-(id)initWithTRAppSessionDictionary:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;


@end


#endif