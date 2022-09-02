// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMPVIEWCONTEXT_H
#define ADCMPVIEWCONTEXT_H


#import <Foundation/Foundation.h>

@class ADCFilepathContext;
@class ADCAdSession;
@class ADCContainer;

@interface ADCMPViewContext : ADCFilepathContext {
    Class _type;
}


@property (readonly, nonatomic) ADCAdSession *session; // ivar: _session
@property (readonly, nonatomic) ADCContainer *container; // ivar: _container
@property (readonly, nonatomic) NSNumber *viewID; // ivar: _viewID
@property (readonly, nonatomic) NSNumber *moduleID; // ivar: _moduleID
@property (weak, nonatomic) id *view; // ivar: _view
@property (readonly, nonatomic) CGRect rect; // ivar: _rect


-(id)initWithMessage:(id)arg0 moduleID:(id)arg1 andType:(Class)arg2 viewExists:(BOOL)arg3 ;
-(BOOL)isValid:(BOOL)arg0 ;


@end


#endif