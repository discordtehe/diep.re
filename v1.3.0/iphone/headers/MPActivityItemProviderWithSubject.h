// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPACTIVITYITEMPROVIDERWITHSUBJECT_H
#define MPACTIVITYITEMPROVIDERWITHSUBJECT_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface MPActivityItemProviderWithSubject : UIActivityItemProvider

@property (readonly, nonatomic) NSString *subject; // ivar: _subject
@property (readonly, nonatomic) NSString *body; // ivar: _body


-(id)initWithSubject:(id)arg0 body:(id)arg1 ;
-(id)item;
-(id)activityViewController:(id)arg0 subjectForActivityType:(id)arg1 ;


@end


#endif