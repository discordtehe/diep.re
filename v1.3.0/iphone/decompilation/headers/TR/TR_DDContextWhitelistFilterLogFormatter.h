// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDCONTEXTWHITELISTFILTERLOGFORMATTER_H
#define TR_DDCONTEXTWHITELISTFILTERLOGFORMATTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TR_DDLoggingContextSet;
@protocol DDLogFormatter;

@interface TR_DDContextWhitelistFilterLogFormatter : NSObject <DDLogFormatter>

 {
    TR_DDLoggingContextSet *_contextSet;
}


@property (readonly, copy) NSArray *whitelist;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)addToWhitelist:(NSUInteger)arg0 ;
-(void)removeFromWhitelist:(NSUInteger)arg0 ;
-(BOOL)isOnWhitelist:(NSUInteger)arg0 ;
-(id)formatLogMessage:(id)arg0 ;


@end


#endif