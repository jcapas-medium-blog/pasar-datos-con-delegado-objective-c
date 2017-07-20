//
//  Persona.h
//  objc001
//
//  Created by jcapasix on 19/7/17.
//  Copyright © 2017 Jordan Capa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject{
    NSString *nombre;
    int age;
}

-(id)initConNombre:(NSString*)nuevoNombre yEdad:(int)nuevaEdad;

- (NSString *)getNombre;
- (int)getEdad;

@property(copy) NSString *nombre;
@property(nonatomic, assign) int edad;


@end
