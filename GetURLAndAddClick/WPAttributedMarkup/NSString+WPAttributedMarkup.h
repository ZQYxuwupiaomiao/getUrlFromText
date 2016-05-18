//
//  NSString+WPAttributedMarkup.h
//  SonoRoute
//
//  Created by Nigel Grange on 07/06/2014.
//  Copyright (c) 2014 Nigel Grange. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSString (WPAttributedMarkup)


-(NSAttributedString*)attributedStringWithStyleBook:(NSDictionary*)styleBook;

-(NSAttributedString*)attributedWithStyleBook;//获取文本中的URL


@end
