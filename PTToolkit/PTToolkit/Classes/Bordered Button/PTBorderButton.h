//
//  PTBorderButton.h
//  JibberJabber
//
//  Created by Paolo Tagliani on 27/10/15.
//  Copyright © 2015 Paolo Tagliani. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

/**
 *  Default button with borded that use the Lato Regular font
 */

@interface PTBorderButton : UIButton

/**
 *  The color of the border of the button
 */
@property(nonatomic, strong, readwrite) IBInspectable UIColor *borderColor;

/**
 *  This will override the layer background color. The button will not preseve selected/highlighted color
 */
@property(nonatomic, copy, readwrite) IBInspectable UIColor *backgroundColor;

/**
 *  The color of the background layer when selected the button
 */
@property(nonatomic, strong, readwrite) IBInspectable UIColor *selectedBackgroundColor;

/**
 *  Corner radius applied to the button
 */
@property(nonatomic, assign, readwrite) IBInspectable CGFloat cornerRadius;

/**
 *  A boolean that indicate if the border has to be shown when selected
 */
@property(nonatomic, assign, readwrite) IBInspectable BOOL showBorderWhenSelected;

/**
 *  Size of the border
 */
@property(nonatomic, assign, readwrite) IBInspectable CGFloat borderWidth;

/**
 * Text Color when selected
 */
@property(nonatomic, strong, readwrite) IBInspectable UIColor *selectedTextColor;

@end
