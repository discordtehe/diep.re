// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADEXTRAHINT_H
#define FBADEXTRAHINT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdExtraHint : NSObject

@property (retain, nonatomic) NSMutableSet *keywords; // ivar: _keywords
@property (copy, nonatomic) NSString *contentURL; // ivar: _contentURL
@property (copy, nonatomic) NSString *extraData; // ivar: _extraData
@property (copy, nonatomic) NSString *mediationData; // ivar: _mediationData


-(id)initWithKeywords:(id)arg0 ;
-(void)addKeyword:(id)arg0 ;
-(void)removeKeyword:(id)arg0 ;
-(id)stringRepresentation;
+(id)createFromJSONString:(id)arg0 ;


@end


#endif