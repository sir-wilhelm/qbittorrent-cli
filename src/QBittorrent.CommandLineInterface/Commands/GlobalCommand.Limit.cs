﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Threading.Tasks;
using McMaster.Extensions.CommandLineUtils;
using QBittorrent.Client;

namespace QBittorrent.CommandLineInterface.Commands
{
    [Subcommand("limit", typeof(Limit))]
    public partial class GlobalCommand
    {
        [Command(Description = "Gets or sets global download and upload speed limits.")]
        [Subcommand("download", typeof(Download))]
        [Subcommand("upload", typeof(Upload))]
        public class Limit : ClientRootCommandBase
        {
            protected static void PrintLimit(IConsole console, long? limit)
            {
                if (limit == null || limit < 0)
                {
                    console.WriteLine("n/a");
                }
                else if (limit == 0)
                {
                    console.WriteLine("unlimited");
                }
                else
                {
                    console.WriteLine($"{limit:N0} bytes/s");
                }
            }

            [Command(Description = "Gets or sets global download speed limit.")]
            public class Download : AuthenticatedCommandBase
            {
                [Range(0, int.MaxValue)]
                [Option("-s|--set <VALUE>", "The download speed limit in bytes/s to set. Pass 0 to remove the limit.", CommandOptionType.SingleValue)]
                public int? Set { get; set; }

                protected override async Task<int> OnExecuteAuthenticatedAsync(QBittorrentClient client, CommandLineApplication app, IConsole console)
                {
                    if (Set != null)
                    {
                        await client.SetGlobalDownloadLimitAsync(Set.Value);
                    }
                    else
                    {
                        var limit = await client.GetGlobalDownloadLimitAsync();
                        PrintLimit(console, limit);
                    }

                    return ExitCodes.Success;
                }
            }

            [Command(Description = "Gets or sets global upload speed limit.")]
            public class Upload : AuthenticatedCommandBase
            {
                [Range(0, int.MaxValue)]
                [Option("-s|--set <VALUE>", "The upload speed limit in bytes/s to set. Pass 0 to remove the limit.", CommandOptionType.SingleValue)]
                public int? Set { get; set; }

                protected override async Task<int> OnExecuteAuthenticatedAsync(QBittorrentClient client, CommandLineApplication app, IConsole console)
                {
                    if (Set != null)
                    {
                        await client.SetGlobalUploadLimitAsync(Set.Value);
                    }
                    else
                    {
                        var limit = await client.GetGlobalUploadLimitAsync();
                        PrintLimit(console, limit);
                    }

                    return ExitCodes.Success;
                }
            }
        }
    }
}