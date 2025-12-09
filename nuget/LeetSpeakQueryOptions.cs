using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.LeetSpeak
{
    /// <summary>
    /// Query options for the Leet Speak API
    /// </summary>
    public class LeetSpeakQueryOptions
    {
        /// <summary>
        /// The text to encode or decode in Leet Speak
        /// Example: hello world
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// The mode to use (encode or decode)
        /// Example: encode
        /// </summary>
        [JsonProperty("mode")]
        public string Mode { get; set; }
    }
}
