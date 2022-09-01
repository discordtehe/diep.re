// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCONTEXT_H
#define GADJSCONTEXT_H


#import <Foundation/Foundation.h>

@class GADEventContext;
@protocol GADJavascriptEvaluating;
@protocol GADEventContextSource;

@interface GADJSContext : NSObject <GADJavascriptEvaluating, GADEventContextSource>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context; // ivar: _eventContext


-(id)initWithEventContext:(id)arg0 ;
-(void)asyncEvaluateFunction:(id)arg0 parameters:(id)arg1 ;
+(void)initialize;
+(id)allocWithZone:(struct _NSZone *)arg0 ;


@end


#endif