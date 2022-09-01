// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISOUTCOMEEVENTSFORMATTER_H
#define ISOUTCOMEEVENTSFORMATTER_H


#import <Foundation/Foundation.h>

@protocol ISEventsFormatterProtocol;

@interface ISOutcomeEventsFormatter : NSObject <ISEventsFormatterProtocol>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)parseEventData:(id)arg0 ;
-(id)deparseEvenData:(id)arg0 ;


@end


#endif