//
//  SkeletonMacro.h
//  ANKHupu
//
//  Created by Animenzzz on 2019/10/25.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

#ifndef SkeletonMacro_h
#define SkeletonMacro_h

#define UIColorFromRGBA(rgbValue, alphaValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:alphaValue]

#define UIColorFromRGB(rgbValue)   UIColorFromRGBA(rgbValue, 1.0)

#define SkeletonColorFromRGBA(R, G, B, A) \
[UIColor  colorWithRed:(R)/255.0 \
green:(G)/255.0 \
blue:(B)/255.0 \
alpha:1.0]

#define SkeletonColorFromRGB(R, G, B)   SkeletonColorFromRGBA(R, G, B, 1.0)
#define SkeletonColorFromRGBV(V)        SkeletonColorFromRGBA(V, V, V, 1.0)

#endif /* SkeletonMacro_h */
