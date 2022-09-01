// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOPOPUPINFO_H
#define MCPROMOPOPUPINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoPopUpInfo : NSObject

@property (readonly, nonatomic) NSString *buttonText; // ivar: mButtonText
@property (readonly, nonatomic) NSString *image; // ivar: mImage
@property (readonly, nonatomic) NSArray *dismissEvent; // ivar: mDismissEvent
@property (readonly, nonatomic) NSArray *killEvent; // ivar: mKillEvent
@property (readonly, nonatomic) id *customData; // ivar: mCustomData
@property (readonly, nonatomic) id *clientCustomData; // ivar: mClientCustomData


-(id)init;
-(id)initWithImage:(id)arg0 buttonText:(id)arg1 dismissEvent:(id)arg2 killEvent:(id)arg3 andCustomData:(id)arg4 ;
-(void)dealloc;


@end


#endif