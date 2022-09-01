// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADREPORTINGITEM_H
#define FBADREPORTINGITEM_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdReportingItem : NSObject

@property (retain, nonatomic) NSMutableArray *items; // ivar: _items
@property (readonly, copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, copy, nonatomic) NSString *title; // ivar: _title
@property (readonly, copy, nonatomic) NSString *heading; // ivar: _heading
@property (readonly, nonatomic) NSArray *subItems;


-(id)initWithIdentifier:(id)arg0 title:(id)arg1 heading:(id)arg2 subItems:(id)arg3 ;
-(void)addSubItem:(id)arg0 ;


@end


#endif