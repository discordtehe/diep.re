// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDMULTIFORMATTER_H
#define TR_DDMULTIFORMATTER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol DDLogFormatter;

@interface TR_DDMultiFormatter : NSObject <DDLogFormatter>

 {
    NSObject<OS_dispatch_queue> *_queue;
    NSMutableArray *_formatters;
}


@property (readonly) NSArray *formatters;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)formatLogMessage:(id)arg0 ;
-(id)logMessageForLine:(id)arg0 originalMessage:(id)arg1 ;
-(void)addFormatter:(id)arg0 ;
-(void)removeFormatter:(id)arg0 ;
-(void)removeAllFormatters;
-(BOOL)isFormattingWithFormatter:(id)arg0 ;


@end


#endif