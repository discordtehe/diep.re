// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABURLBUILDER_H
#define FABURLBUILDER_H


#import <Foundation/Foundation.h>


@interface FABURLBuilder : NSObject

@property (retain, nonatomic) NSMutableString *URLString; // ivar: _URLString
@property (nonatomic) NSUInteger queryParams; // ivar: _queryParams


-(id)init;
-(id)escapeString:(id)arg0 ;
-(void)appendComponent:(id)arg0 ;
-(void)escapeAndAppendComponent:(id)arg0 ;
-(void)appendValue:(id)arg0 forQueryParam:(id)arg1 ;
-(id)URL;
+(id)URLWithBase:(id)arg0 ;


@end


#endif