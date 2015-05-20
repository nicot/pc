import Network.Curl

main :: IO ()
main = create 3

-- create from do api using curl
create :: Integer -> IO ()
create n = do
    disco <- simpleHttp $ "https://discovery.etcd.io/new?size=" ++ show n
    f <- Prelude.readFile "cloud-config.yml"
    let cloudData = replace "$discovery_url" (show disco) f
    simpleHttp $ requestHeaders
    return ()

-- destroy from do api using curl
destroy :: IO ()
destroy = undefined
