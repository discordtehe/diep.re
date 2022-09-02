// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPURL_H
#define MPURL_H


#import <CoreFoundation/CoreFoundation.h>


@interface MPURL : NSURL

@property (readonly, nonatomic) NSMutableDictionary *postData; // ivar: _postData


-(id)initWithString:(id)arg0 ;
-(id)arrayForPOSTDataKey:(id)arg0 ;
-(id)dictionaryForPOSTDataKey:(id)arg0 ;
-(id)numberForPOSTDataKey:(id)arg0 ;
-(id)stringForPOSTDataKey:(id)arg0 ;
+(id)URLWithString:(id)arg0 ;
+(id)URLWithComponents:(id)arg0 postData:(id)arg1 ;


@end


#endif