// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDCONTEXTBLACKLISTFILTERLOGFORMATTER_H
#define TR_DDCONTEXTBLACKLISTFILTERLOGFORMATTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TR_DDLoggingContextSet;
@protocol DDLogFormatter;

@interface TR_DDContextBlacklistFilterLogFormatter : NSObject <DDLogFormatter>

 {
    TR_DDLoggingContextSet *_contextSet;
}


@property (readonly, copy) NSArray *blacklist;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)addToBlacklist:(NSUInteger)arg0 ;
-(void)removeFromBlacklist:(NSUInteger)arg0 ;
-(BOOL)isOnBlacklist:(NSUInteger)arg0 ;
-(id)formatLogMessage:(id)arg0 ;


@end


#endif