#import "NSDictionary+Primitive.h"

@implementation NSDictionary (Primitive)

-(BOOL)hasKey:(NSString*)key {
    NSObject* o = self[key];
    BOOL has = o != nil;
    return has;
}

-(BOOL)boolForKey:(NSString*)key {
    BOOL i = [self[key] boolValue];
    return i;
}

-(int)intForKey:(NSString*)key {
    int i = [self[key] intValue];
    return i;
}

- (NSInteger) integerForKey:(NSString *)key {
    NSInteger i = [self[key] integerValue];
    return i;
}

- (NSUInteger) unsignedIntegerForKey:(NSString *)key {
    NSUInteger i = [self[key] unsignedIntegerValue];
    return i;
}

- (CGFloat) cgFloatForKey:(NSString *)key {
    CGFloat f = [self[key] doubleValue];
    return f;
}

-(int)charForKey:(NSString*)key {
    char i = [self[key] charValue];
    return i;
}

-(float)floatForKey:(NSString*)key {
    float i = [self[key] floatValue];
    return i;
}

-(CGPoint)pointForKey:(NSString*)key {
    CGPoint o = CGPointFromString(self[key]);
    return o;
}

-(CGSize)sizeForKey:(NSString*)key {
    CGSize o = CGSizeFromString(self[key]);
    return o;
}

-(CGRect)rectForKey:(NSString*)key {
    CGRect o = CGRectFromString(self[key]);
    return o;
}


@end

@implementation NSMutableDictionary(Primitive)

-(void)setBool:(BOOL)i forKey:(NSString*)key {
    self[key] = @(i);
}

-(void)setInt:(int)i forKey:(NSString*)key {
    self[key] = @(i);
}

-(void)setInteger:(NSInteger)i forKey:(NSString *)key {
    self[key] = @(i);
}

-(void)setUnsignedInteger:(NSUInteger)i forKey:(NSString *)key {
    self[key] = @(i);
}

-(void)setCGFloat:(CGFloat)f forKey:(NSString *)key {
    self[key] = @(f);
}

-(void)setChar:(char)c forKey:(NSString*)key {
    self[key] = @(c);
}

-(void)setFloat:(float)i forKey:(NSString*)key {
    self[key] = @(i);
}

-(void)setPoint:(CGPoint)o forKey:(NSString*)key{
    self[key] = NSStringFromCGPoint(o);
}

-(void)setSize:(CGSize)o forKey:(NSString*)key {
    self[key] = NSStringFromCGSize(o);
}

-(void)setRect:(CGRect)o forKey:(NSString*)key {
    self[key] = NSStringFromCGRect(o);
}


@end
