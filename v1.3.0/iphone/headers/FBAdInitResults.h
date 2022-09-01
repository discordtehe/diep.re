// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADINITRESULTS_H
#define FBADINITRESULTS_H


#import <Foundation/Foundation.h>


@interface FBAdInitResults : NSObject

@property (nonatomic, getter=isSuccess) BOOL success; // ivar: _success
@property (copy, nonatomic) NSString *message; // ivar: _message


-(id)initWithSuccess:(BOOL)arg0 message:(id)arg1 ;
+(void)initialize;


@end


#endif