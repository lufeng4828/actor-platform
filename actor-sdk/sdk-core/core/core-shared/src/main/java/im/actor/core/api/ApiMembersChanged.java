package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ApiMembersChanged extends ApiWebRTCSignaling {

    private List<ApiCallMember> allMembers;

    public ApiMembersChanged(@NotNull List<ApiCallMember> allMembers) {
        this.allMembers = allMembers;
    }

    public ApiMembersChanged() {

    }

    public int getHeader() {
        return 16;
    }

    @NotNull
    public List<ApiCallMember> getAllMembers() {
        return this.allMembers;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        List<ApiCallMember> _allMembers = new ArrayList<ApiCallMember>();
        for (int i = 0; i < values.getRepeatedCount(1); i ++) {
            _allMembers.add(new ApiCallMember());
        }
        this.allMembers = values.getRepeatedObj(1, _allMembers);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRepeatedObj(1, this.allMembers);
    }

    @Override
    public String toString() {
        String res = "struct MembersChanged{";
        res += "allMembers=" + this.allMembers;
        res += "}";
        return res;
    }

}
