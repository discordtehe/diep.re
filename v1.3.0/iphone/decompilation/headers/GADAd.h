// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAD_H
#define GADAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADEventContext;
@class GADRootViewControllerProvider;
@class GADAdMetadata;
@protocol GADEventContextSource;
@protocol GADMonitorOwner;

@interface GADAd : NSObject <GADEventContextSource, GADMonitorOwner>

 {
    GADEventContext *_context;
    NSMutableArray *_monitors;
}


@property (readonly, nonatomic) GADRootViewControllerProvider *rootViewControllerProvider; // ivar: _rootViewControllerProvider
@property (readonly, nonatomic) GADAdMetadata *metadata; // ivar: _metadata
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)init;
-(id)initWithContext:(id)arg0 metadata:(id)arg1 ;
-(void)addMonitor:(id)arg0 ;


@end


#endif