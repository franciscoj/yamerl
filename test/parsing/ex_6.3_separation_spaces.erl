-module('ex_6.3_separation_spaces').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        28,
        true,
        [],
        0,
        29,
        4,
        1,
        false,
        3,
        8,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        21,
        20,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,3,8},
          {yamerl_doc_end,3,8},
          {yamerl_collection_end,3,8,block,sequence},
          {yamerl_collection_end,3,8,block,sequence},
          {yamerl_scalar,3,5,
            {yamerl_tag,3,5,{non_specific,"?"}},
            flow,plain,"baz"},
          {yamerl_sequence_entry,3,3},
          {yamerl_scalar,2,5,
            {yamerl_tag,2,5,{non_specific,"?"}},
            flow,plain,"baz"},
          {yamerl_sequence_entry,2,3},
          {yamerl_collection_start,2,3,
            {yamerl_tag,2,3,{non_specific,"?"}},
            block,sequence},
          {yamerl_sequence_entry,2,1},
          {yamerl_collection_end,1,12,block,mapping},
          {yamerl_scalar,1,9,
            {yamerl_tag,1,9,{non_specific,"?"}},
            flow,plain,"bar"},
          {yamerl_mapping_value,1,6},
          {yamerl_scalar,1,3,
            {yamerl_tag,1,3,{non_specific,"?"}},
            flow,plain,"foo"},
          {yamerl_mapping_key,1,3},
          {yamerl_collection_start,1,3,
            {yamerl_tag,1,3,{non_specific,"?"}},
            block,mapping},
          {yamerl_sequence_entry,1,1},
          {yamerl_collection_start,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            block,sequence},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).