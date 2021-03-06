package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import java.io.IOException;

public enum ApiUpdateOptimization {

    NONE(1),
    STRIP_ENTITIES(2),
    ENABLE_COMBINED(3),
    FASTER_MESSAGES(4),
    STRIP_COUNTERS(5),
    COMPACT_USERS(6),
    GROUPS_V2(7),
    UNSUPPORTED_VALUE(-1);

    private int value;

    ApiUpdateOptimization(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static ApiUpdateOptimization parse(int value) throws IOException {
        switch(value) {
            case 1: return ApiUpdateOptimization.NONE;
            case 2: return ApiUpdateOptimization.STRIP_ENTITIES;
            case 3: return ApiUpdateOptimization.ENABLE_COMBINED;
            case 4: return ApiUpdateOptimization.FASTER_MESSAGES;
            case 5: return ApiUpdateOptimization.STRIP_COUNTERS;
            case 6: return ApiUpdateOptimization.COMPACT_USERS;
            case 7: return ApiUpdateOptimization.GROUPS_V2;
            default: return ApiUpdateOptimization.UNSUPPORTED_VALUE;
        }
    }
}
