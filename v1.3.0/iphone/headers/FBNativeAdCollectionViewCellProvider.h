// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADCOLLECTIONVIEWCELLPROVIDER_H
#define FBNATIVEADCOLLECTIONVIEWCELLPROVIDER_H


#import <Foundation/Foundation.h>

@class FBNativeAdCollectionViewAdProvider;
@class FBNativeAdViewAttributes;

@interface FBNativeAdCollectionViewCellProvider : FBNativeAdCollectionViewAdProvider

@property (nonatomic) NSInteger type; // ivar: _type
@property (retain, nonatomic) FBNativeAdViewAttributes *attributes; // ivar: _attributes
@property (retain, nonatomic) NSString *uniqueCollectionCellIdentifier; // ivar: _uniqueCollectionCellIdentifier


-(id)initWithManager:(id)arg0 ;
-(id)initWithManager:(id)arg0 forType:(NSInteger)arg1 ;
-(id)initWithManager:(id)arg0 forType:(NSInteger)arg1 forAttributes:(id)arg2 ;
-(NSInteger)collectionView:(id)arg0 numberOfRowsInSection:(NSInteger)arg1 ;
-(id)collectionView:(id)arg0 cellForItemAtIndexPath:(id)arg1 ;
-(CGFloat)collectionView:(id)arg0 heightForRowAtIndexPath:(id)arg1 ;
-(id)collectionCellIdentifier;
+(void)initialize;


@end


#endif