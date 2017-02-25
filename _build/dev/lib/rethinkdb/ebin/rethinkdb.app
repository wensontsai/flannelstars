{application,rethinkdb,
             [{description,"RethinkDB driver for Elixir"},
              {modules,['Elixir.Enumerable.RethinkDB.Collection',
                        'Elixir.Enumerable.RethinkDB.Feed',
                        'Elixir.Poison.Encoder.RethinkDB.Q',
                        'Elixir.RethinkDB','Elixir.RethinkDB.Collection',
                        'Elixir.RethinkDB.Connection',
                        'Elixir.RethinkDB.Connection.Request',
                        'Elixir.RethinkDB.Connection.Transport',
                        'Elixir.RethinkDB.Connection.Transport.SSL',
                        'Elixir.RethinkDB.Connection.Transport.TCP',
                        'Elixir.RethinkDB.Exception',
                        'Elixir.RethinkDB.Exception.ConnectionClosed',
                        'Elixir.RethinkDB.Exception.TooManyRequests',
                        'Elixir.RethinkDB.Feed','Elixir.RethinkDB.Lambda',
                        'Elixir.RethinkDB.Prepare',
                        'Elixir.RethinkDB.Pseudotypes',
                        'Elixir.RethinkDB.Pseudotypes.Binary',
                        'Elixir.RethinkDB.Pseudotypes.Geometry',
                        'Elixir.RethinkDB.Pseudotypes.Geometry.Line',
                        'Elixir.RethinkDB.Pseudotypes.Geometry.Point',
                        'Elixir.RethinkDB.Pseudotypes.Geometry.Polygon',
                        'Elixir.RethinkDB.Pseudotypes.Time',
                        'Elixir.RethinkDB.Q','Elixir.RethinkDB.Query',
                        'Elixir.RethinkDB.Query.Macros',
                        'Elixir.RethinkDB.Record',
                        'Elixir.RethinkDB.Response']},
              {registered,[]},
              {vsn,"0.4.0"},
              {applications,[kernel,stdlib,elixir,logger,poison,connection]}]}.