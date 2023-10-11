//
//  main.m
//  Lesson3
//
//  Created by Олег Алексеев on 09.10.2023.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Doctor *doctor = [Doctor new];
        Patient *patient = [[Patient alloc] initName:@"Bob" andPill:@"ABZ"];

        doctor.delegate = patient;
        [patient takeAPill:patient.pill byPatient:patient.name];
    }
    return 0;
}
