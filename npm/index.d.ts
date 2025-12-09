declare module '@apiverve/leetspeak' {
  export interface leetspeakOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface leetspeakResponse {
    status: string;
    error: string | null;
    data: LeetSpeakData;
    code?: number;
  }


  interface LeetSpeakData {
      text:              string;
      mode:              string;
      changedCharacters: number;
  }

  export default class leetspeakWrapper {
    constructor(options: leetspeakOptions);

    execute(callback: (error: any, data: leetspeakResponse | null) => void): Promise<leetspeakResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: leetspeakResponse | null) => void): Promise<leetspeakResponse>;
    execute(query?: Record<string, any>): Promise<leetspeakResponse>;
  }
}
