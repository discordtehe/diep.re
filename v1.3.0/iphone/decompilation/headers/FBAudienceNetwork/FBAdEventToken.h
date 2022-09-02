// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADEVENTTOKEN_H
#define FBADEVENTTOKEN_H


#import <Foundation/Foundation.h>


@interface FBAdEventToken : NSObject

@property (copy, nonatomic) NSUUID *tokenId; // ivar: _tokenId
@property (copy, nonatomic) NSString *token; // ivar: _token


-(id)initWithToken:(id)arg0 ;
+(void)initialize;
+(id)deserializeFromSqlite:(struct sqlite3_stmt *)arg0 ;


@end


#endif