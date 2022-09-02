// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLVIEWMODEL_H
#define FBADDSLVIEWMODEL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdDSLModel;

@interface FBAdDSLViewModel : NSObject

@property (retain, nonatomic) FBAdDSLModel *adModel; // ivar: _adModel
@property (copy, nonatomic) NSMutableDictionary *adRawData; // ivar: _adRawData
@property (readonly, copy, nonatomic) NSArray *assets; // ivar: _assets


-(id)initWithMetadata:(id)arg0 withSandboxAddress:(id)arg1 ;
-(BOOL)isModelReadyToPresent;
-(BOOL)setLocalURLForAsset:(id)arg0 withURL:(id)arg1 ;
-(id)commonAssetsDirectoriesURL;
-(id)getAdJSONFieldForKey:(id)arg0 ;
-(id)htmlFileURL;
-(id)stringForKeyOrNil:(id)arg0 inDictionary:(id)arg1 ;
-(id)objectForKeyOrNil:(id)arg0 ofClass:(Class)arg1 inDictionary:(id)arg2 ;


@end


#endif