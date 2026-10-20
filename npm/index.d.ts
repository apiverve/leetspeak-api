declare module '@apiverve/leetspeak' {
  export interface leetspeakOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface leetspeakResponse {
    status: string;
    error: string | null;
    data: LeetSpeakData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface LeetSpeakData {
      text:              null | string;
      mode:              null | string;
      changedCharacters: number | null;
  }

  export default class leetspeakWrapper {
    constructor(options: leetspeakOptions);

    execute(callback: (error: any, data: leetspeakResponse | null) => void): Promise<leetspeakResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: leetspeakResponse | null) => void): Promise<leetspeakResponse>;
    execute(query?: Record<string, any>): Promise<leetspeakResponse>;
  }
}
