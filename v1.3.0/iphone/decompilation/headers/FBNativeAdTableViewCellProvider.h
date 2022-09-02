// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADTABLEVIEWCELLPROVIDER_H
#define FBNATIVEADTABLEVIEWCELLPROVIDER_H


#import <Foundation/Foundation.h>

@class FBNativeAdTableViewAdProvider;
@class FBNativeAdViewAttributes;
@protocol UITableViewDataSource;

@interface FBNativeAdTableViewCellProvider : FBNativeAdTableViewAdProvider <UITableViewDataSource>



@property (nonatomic) NSInteger type; // ivar: _type
@property (retain, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (copy, nonatomic) NSString *uniqueTableCellIdentifier; // ivar: _uniqueTableCellIdentifier
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithManager:(id)arg0 ;
-(id)initWithManager:(id)arg0 forType:(NSInteger)arg1 ;
-(id)initWithManager:(id)arg0 forType:(NSInteger)arg1 forAttributes:(id)arg2 ;
-(NSInteger)tableView:(id)arg0 numberOfRowsInSection:(NSInteger)arg1 ;
-(id)tableView:(id)arg0 cellForRowAtIndexPath:(id)arg1 ;
-(CGFloat)tableView:(id)arg0 heightForRowAtIndexPath:(id)arg1 ;
-(CGFloat)tableView:(id)arg0 estimatedHeightForRowAtIndexPath:(id)arg1 ;
-(id)tableCellIdentifier;
+(void)initialize;


@end


#endif