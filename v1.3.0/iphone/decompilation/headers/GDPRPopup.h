// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GDPRPOPUP_H
#define GDPRPOPUP_H



@class CCMenu;
@class MCFramedSprite;
@class CCMenuItemSpriteExtendedInput;
@class MCAdjustableLabelTTF;

@interface GDPRPopup : CCMenu {
    MCFramedSprite *_popupBackground;
    MCFramedSprite *_popup;
    MCFramedSprite *_descriptionBackground;
    CCMenuItemSpriteExtendedInput *_acceptButton;
    CCMenuItemSpriteExtendedInput *_declineButton;
    MCAdjustableLabelTTF *_title;
    MCAdjustableLabelTTF *_description;
    MCAdjustableLabelTTF *_footer;
    id *mTarget;
    SEL mSelector;
}




-(id)initWithId:(id)arg0 andSelector:(SEL)arg1 ;
-(id)init;
-(void)acceptCallback;
-(void)declineCallback;


@end


#endif